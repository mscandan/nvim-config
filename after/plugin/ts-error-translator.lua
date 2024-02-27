local status, ts_error_translator = pcall(require, "ts-error-translator")

if not status then
	return
end

ts_error_translator.setup()
