local setup, comment = pcall(require, 'Comment');

if not setup then
    return
end

comment.setup()

-- gc9j comments next 9 lines
-- gcc comments line
