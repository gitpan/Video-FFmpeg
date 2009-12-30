# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Video-FFmpeg.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 14;
BEGIN { use_ok('Video::FFmpeg') };


#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

$info = Video::FFmpeg::AVFormat->new("test.ogm");

is($info->duration_us,14140952,"duration_us");
is($info->start_time,0,"start_time");
is($info->bit_rate,437937,"bit_rate");
is($info->audio->codec,"vorbis","acodec");
is($info->audio->bit_rate,0,"abitrate");
is($info->audio->sample_rate,44100,"asample_rate");
is($info->audio->channels,2,"achannels");
is($info->video->codec,"theora","vcodec");
is($info->video->width,400,"vwidth");
is($info->video->height,300,"vheight");
is($info->video->fps,29.9699993133545,"vfps");
is($info->video->display_aspect,"4:3","vDAR");
is($info->video->pixel_aspect,undef,"vPAR");
