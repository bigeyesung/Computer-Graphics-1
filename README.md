# Computer-Graphics-1
The aim of the coursework is to modify the vertex and fragment shaders in the provided OpenGL framework to implement transformations using the provided model, view and projection matrices, and to implement Phong shading. The object is rendered into a texture, which can then be modified in a post processing fragment shader before being drawn onscreen.
Specification
The additions required are:
• Modify the vertex and fragment shader code (vertex.glsl, fragment.glsl) to:
– Transform the vertices using the model, view and projection matrices provided
– Transform the normals using the matrix provided
– Calculate vectors from the transformed vertex to the light source and eye (the light and eye coordinates in the global coordinate system are
provided, these should not be transformed).
– Calculate Phong illumination, with an ambient, diffuse and specular component
– Implement Phong shading, using interpolated vertex normals per fragment/pixel


