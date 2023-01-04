local util = require("decipher.util")

describe("util", function()
    describe("escape_newlines", function()
        it("escapes newlines", function()
            assert.are.same(util.escape_newlines(""), "")
            assert.are.same(util.escape_newlines("no newlines"), "no newlines")
            assert.are.same(util.escape_newlines("two\nnewlines\n"), "two\\nnewlines\\n")
        end)
    end)

    describe("title_case", function()
        it("transforms strings to title-case", function()
            assert.are.same(util.title_case(""), "")
            assert.are.same(util.title_case("base64"), "Base64")
            assert.are.same(util.title_case("base64-url"), "Base64Url")
        end)
    end)
end)