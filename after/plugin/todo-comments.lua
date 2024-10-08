local status, comments = pcall(require, "todo-comments")

if not status then
	return
end

comments.setup()
