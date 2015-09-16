echo "Welcome to the youtube-dl to gdrive Dockerfile!"
echo 
echo "To initialize GDrive, type the command below and follow the instructions for oAuthentication"
echo 
echo "    drive init ~/gdrive"
echo
echo "Then, download videos (to the current ~/gdrive/youtube-videos directory) type:"
echo
echo "    youtube-dl https://www.youtube.com/watch?v=t4OSfFWk0u8"
echo
echo "To push all your videos, type:"
echo
echo "    drive push -no-clobber"
echo
echo "Which will push all your downloaded videos to a /youtube-videos directory "
echo "in GDrive.  Use no clobber, otherwise it will delete any other videos you"
echo "have in the cloud that aren't synced locally."
echo
echo "For more info on the Linux drive client, see"
echo
echo "    https://github.com/odeke-em/drive"
echo
