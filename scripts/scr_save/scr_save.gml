function scr_save() {
	file = "whiskers.njr";
	fileid = file_text_open_write(file);
	if (fileid != -1) {
		file_text_close(fileid);
	}
}