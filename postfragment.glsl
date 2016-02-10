#version 130
 //GLuint theTexture;
//Input position (coordinates within texture)
in vec2 pos;

//Texture maps for the image drawn on the screen, and the Z-buffer
uniform sampler2D tex;
uniform sampler2D depth;

//Final output colour
out vec4 outColour;

void main() {
	//Modify this code to read from the texture and add extra effects!
	//Read the colour from the texture and output it directly to the screen
        //glBindTexture(tex,depth);
        float a =0.005;
        vec4 col=texture(tex,vec2(pos.x,pos.y));
	vec4 col1=texture(tex,vec2(pos.x+a,pos.y+a));
        vec4 col2=texture(tex,vec2(pos.x+a,pos.y-a));
        vec4 col3=texture(tex,vec2(pos.x-a,pos.y+a));
        vec4 col4=texture(tex,vec2(pos.x-a,pos.y-a));

	outColour=(col+col1+col2+col3+col4)/5;
}
