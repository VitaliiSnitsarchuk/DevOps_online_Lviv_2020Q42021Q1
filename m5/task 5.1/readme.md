
Task1.Part1
![1](https://user-images.githubusercontent.com/75836953/104859691-baf6bf00-592f-11eb-89e7-22a5055c466d.png)

   The shadow file has changed in which all user passwords are located.
   If you compare the hash value in the / etc / shadow file, you can see that it has changed after entering the passwd command. 
![2](https://user-images.githubusercontent.com/75836953/104859693-bc27ec00-592f-11eb-9ddb-c293c5340325.png)
![3](https://user-images.githubusercontent.com/75836953/104859694-bc27ec00-592f-11eb-8d98-6e6b81aa9d37.png)
![4](https://user-images.githubusercontent.com/75836953/104859695-bcc08280-592f-11eb-89d2-05d57b064492.png)

Each line in the file has seven fields delimited by colons that contain the following information:

   username: pswd: uid: gid: uidcomments: directory: shell

 - username -username 
 - pswd-encrypted password
 - uid-user ID number (UID) 
 - gid-users group ID number (GID)
 - uidcomments -comment, extended user description, for example full name of the user (GECOS)
 - directory -user home directory 
 - shell - login shell (defaults - /bin/bash)
![5](https://user-images.githubusercontent.com/75836953/104859696-bcc08280-592f-11eb-8771-9fe16437e653.png)
![6](https://user-images.githubusercontent.com/75836953/104859698-bd591900-592f-11eb-99af-77fa7822587b.png)
![7](https://user-images.githubusercontent.com/75836953/104859699-bd591900-592f-11eb-86f1-910d9323add5.png)
![8](https://user-images.githubusercontent.com/75836953/104859701-bdf1af80-592f-11eb-9989-b5811e235489.png)
![9](https://user-images.githubusercontent.com/75836953/104859703-bdf1af80-592f-11eb-8c3f-4238bc653b4a.png)
![10](https://user-images.githubusercontent.com/75836953/104859705-bf22dc80-592f-11eb-8e26-57c78824e444.png)
![11](https://user-images.githubusercontent.com/75836953/104859706-bf22dc80-592f-11eb-9dc5-cc051b959579.png)
   - Command  passwd  with options  -d  delete the password for the named account
   - Command  usermod  with options -c  give new value of the GECOS field
![12](https://user-images.githubusercontent.com/75836953/104859708-bfbb7300-592f-11eb-8917-24ecf9ab8f9d.png)
![13](https://user-images.githubusercontent.com/75836953/104859709-c0540980-592f-11eb-80aa-7e04cac150e0.png)
![14](https://user-images.githubusercontent.com/75836953/104859710-c0540980-592f-11eb-828c-266a2bf8ef27.png)
![15](https://user-images.githubusercontent.com/75836953/104859711-c0eca000-592f-11eb-927d-62563a182932.png)
![16](https://user-images.githubusercontent.com/75836953/104859712-c0eca000-592f-11eb-8009-6e537bac40c9.png)
![17](https://user-images.githubusercontent.com/75836953/104859713-c1853680-592f-11eb-84a5-c4409c21dba7.png)
![18](https://user-images.githubusercontent.com/75836953/104859714-c1853680-592f-11eb-8877-73592c2a6381.png)
![19](https://user-images.githubusercontent.com/75836953/104859715-c21dcd00-592f-11eb-974a-ed8d98dae7af.png)
![20](https://user-images.githubusercontent.com/75836953/104859716-c21dcd00-592f-11eb-8b4d-cccb4e19156e.png)

Task1.Part2
![21](https://user-images.githubusercontent.com/75836953/105500434-97cf6500-5ccb-11eb-9675-f1bdf70dec2c.png)
![22](https://user-images.githubusercontent.com/75836953/105500439-99992880-5ccb-11eb-87fa-0fadf5be41a9.png)
![23](https://user-images.githubusercontent.com/75836953/105500440-99992880-5ccb-11eb-9d39-b2419138f132.png)
![24](https://user-images.githubusercontent.com/75836953/105500442-9a31bf00-5ccb-11eb-9882-922be665dc57.png)
![25](https://user-images.githubusercontent.com/75836953/105500443-9a31bf00-5ccb-11eb-9427-8d4ecc192588.png)
![26](https://user-images.githubusercontent.com/75836953/105500444-9aca5580-5ccb-11eb-973a-38e3b579bc3b.png)
![27](https://user-images.githubusercontent.com/75836953/105500445-9b62ec00-5ccb-11eb-8e78-f1e8eabc33b0.png)
![28](https://user-images.githubusercontent.com/75836953/105500448-9b62ec00-5ccb-11eb-835c-26bd29994351.png)
![29](https://user-images.githubusercontent.com/75836953/105500449-9bfb8280-5ccb-11eb-80f0-49798b5b9a70.png)
![30](https://user-images.githubusercontent.com/75836953/105500450-9bfb8280-5ccb-11eb-99e2-60894e7837d0.png)
![31](https://user-images.githubusercontent.com/75836953/105500452-9c941900-5ccb-11eb-9369-bb5eec3af417.png)
![32](https://user-images.githubusercontent.com/75836953/105500454-9d2caf80-5ccb-11eb-817d-d41d28d6a82f.png)
![33](https://user-images.githubusercontent.com/75836953/105500456-9d2caf80-5ccb-11eb-8d05-c8523e72b5d5.png)
![34](https://user-images.githubusercontent.com/75836953/105500457-9dc54600-5ccb-11eb-98b2-c8f1e406cb2a.png)
![35](https://user-images.githubusercontent.com/75836953/105500459-9dc54600-5ccb-11eb-9c20-03fccfaf39fd.png)
![36](https://user-images.githubusercontent.com/75836953/105500460-9e5ddc80-5ccb-11eb-8a8e-95a031a2596f.png)
![37](https://user-images.githubusercontent.com/75836953/105500464-9ef67300-5ccb-11eb-9c58-a6c106e099fa.png)
![38](https://user-images.githubusercontent.com/75836953/105500466-9ef67300-5ccb-11eb-80fa-5eb06ec305bd.png)
![39](https://user-images.githubusercontent.com/75836953/105500469-9f8f0980-5ccb-11eb-958e-2d2360972b38.png)
![40](https://user-images.githubusercontent.com/75836953/105500474-a027a000-5ccb-11eb-9c46-bf843ae2e521.png)
![41](https://user-images.githubusercontent.com/75836953/105500475-a0c03680-5ccb-11eb-9f8b-029ee406a010.png)
![42](https://user-images.githubusercontent.com/75836953/105500476-a0c03680-5ccb-11eb-9347-8bc88ac81179.png)
![43](https://user-images.githubusercontent.com/75836953/105500477-a158cd00-5ccb-11eb-8eba-1f25e7694a63.png)
![44](https://user-images.githubusercontent.com/75836953/105500479-a1f16380-5ccb-11eb-9f1a-44404abf53c5.png)
![45](https://user-images.githubusercontent.com/75836953/105500480-a289fa00-5ccb-11eb-93f2-0501a726cfee.png)
![46](https://user-images.githubusercontent.com/75836953/105500483-a289fa00-5ccb-11eb-9743-924df9f4653c.png)
![47](https://user-images.githubusercontent.com/75836953/105500485-a3229080-5ccb-11eb-81eb-d89a7579c364.png)
![48](https://user-images.githubusercontent.com/75836953/105500487-a3bb2700-5ccb-11eb-9fe9-7ca38a38305a.png)
![49](https://user-images.githubusercontent.com/75836953/105500490-a3bb2700-5ccb-11eb-8ab0-1eb6e26c38d3.png)
![50](https://user-images.githubusercontent.com/75836953/105500493-a453bd80-5ccb-11eb-864d-59b6aedf97bb.png)
![51](https://user-images.githubusercontent.com/75836953/105500496-a4ec5400-5ccb-11eb-8943-4fc3d7da24e6.png)
![52](https://user-images.githubusercontent.com/75836953/105500497-a584ea80-5ccb-11eb-954f-f2bebbf8fff2.png)
![53](https://user-images.githubusercontent.com/75836953/105500498-a584ea80-5ccb-11eb-89c9-97425c1ac405.png)
