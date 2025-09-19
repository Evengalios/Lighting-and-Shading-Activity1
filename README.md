# Lighting & Shading — Activity 1

## What I implemented
Using a base texture and a normal map, I Implemented a normal-mapped Surface Shader using Unity's Surface Shader system with the Lambert lighting model. 

## Screenshots
<img width="1260" height="732" alt="Screenshot 2" src="https://github.com/user-attachments/assets/f2351b1e-d646-4a00-b02d-90d285b514ed" />
Game View
<img width="1016" height="923" alt="Screenshot 1" src="https://github.com/user-attachments/assets/7436a441-a41c-4660-834a-ce46890b7ebd" />
Material Inspector with normal map assigned
<img width="768" height="669" alt="Screenshot 3" src="https://github.com/user-attachments/assets/cc48111b-f534-4641-aeb2-f1c93f213103" />
 Shader code

## Reflection
**Strengths**
- I was able to implement the normal mapping quickly. I alsoo noticed the immediate visual improvement compared to flat shading, the textures look a lot more "real".  
- I Learned how to use UnpackNormal() and how to control normal strength with _BumpScale.

**Weaknesses**
- I spent a lot of time fixing Shader compilation errors. Like programming anything, finding the issue takes a ton of searching and it was made even more difficult due to the fact that I am not confident in compiling shaders yet.
  
- I need to get better at handling tangent space versus object space normals when building custom meshes

**Opportunities / Next steps**
- I want to add specular (Blinn-Phong) or rim lighting to combine with normal mapping.
- I want to also try Shader Graph in URP for visual iteration.
