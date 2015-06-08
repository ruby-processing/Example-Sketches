#ifdef GL_ES
precision highp float;
#endif

// This line is optional from Processing 2.1 and up
#define PROCESSING_TEXTURE_SHADER

uniform sampler2D texture; // iChannel0 in Shadertoy
uniform vec2 sketchSize; // iResolution in Shadertoy


const int lookupSize = 64;
const float errorCarry = 0.3;

float getGrayscale(vec2 coords){
	vec2 uv = coords / sketchSize.xy;
	uv.y = 1.0-uv.y;
	vec3 sourcePixel = texture2D(texture, uv).rgb;
	return length(sourcePixel*vec3(0.2126,0.7152,0.0722));
}

void main( void ) {
	
	int topGapY = int(sketchSize.y - gl_FragCoord.y);
	
	int cornerGapX = int((gl_FragCoord.x < 10.0) ? gl_FragCoord.x : sketchSize.x - gl_FragCoord.x);
	int cornerGapY = int((gl_FragCoord.y < 10.0) ? gl_FragCoord.y : sketchSize.y - gl_FragCoord.y);
	int cornerThreshhold = ((cornerGapX == 0) || (topGapY == 0)) ? 5 : 4;
	
	if (cornerGapX+cornerGapY < cornerThreshhold) {
				
		gl_FragColor = vec4(0,0,0,1);
		
	} else if (topGapY < 20) {
			
			if (topGapY == 19) {
				
				gl_FragColor = vec4(0,0,0,1);
				
			} else {
		
				gl_FragColor = vec4(1,1,1,1);
				
			}
		
	} else {
		
		float xError = 0.0;
		for(int xLook=0; xLook<lookupSize; xLook++){
			float grayscale = getGrayscale(gl_FragCoord.xy + vec2(-lookupSize+xLook,0));
			grayscale += xError;
			float bit = grayscale >= 0.5 ? 1.0 : 0.0;
			xError = (grayscale - bit)*errorCarry;
		}
		
		float yError = 0.0;
		for(int yLook=0; yLook<lookupSize; yLook++){
			float grayscale = getGrayscale(gl_FragCoord.xy + vec2(0,-lookupSize+yLook));
			grayscale += yError;
			float bit = grayscale >= 0.5 ? 1.0 : 0.0;
			yError = (grayscale - bit)*errorCarry;
		}
		
		float finalGrayscale = getGrayscale(gl_FragCoord.xy);
		finalGrayscale += xError*0.5 + yError*0.5;
		float finalBit = finalGrayscale >= 0.5 ? 1.0 : 0.0;
		
		gl_FragColor = vec4(finalBit,finalBit,finalBit,1);
			
	}
	
}