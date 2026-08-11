import { uploadPhoto, createUser } from "./utiljs";

export default function handleProfileSignup() {
  return Promise.all([uploadPhoto(), createUser()])
    .then((results) => {
      const user = results[1];
      console.log(user.firstName, user.lastName);
    })
    .catch(() => {
      console.log("Signup system offline");
  });
}
