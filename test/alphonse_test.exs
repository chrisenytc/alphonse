defmodule AlphonseTest do
  use ExUnit.Case

  @fixture_path "#{__DIR__}/fixtures/test_data.txt"
  @encrypted_data_path "#{__DIR__}/fixtures/encrypted_test_data.txt"
  @decrypted_data_path "#{__DIR__}/fixtures/decrypted_test_data.txt"

  test "should encrypt a file with a key and iv using aes-128-cbc" do
    assert {:ok, _} = Alphonse.encrypt @fixture_path, key, iv, @encrypted_data_path
    assert File.exists? @encrypted_data_path
  end

  test "should decrypt a file with a key and iv using aes-128-cbc" do
    {:ok, decrypted} = Alphonse.decrypt @encrypted_data_path, key, iv, @decrypted_data_path
    assert File.exists? @decrypted_data_path
    {:ok, body} = File.read @decrypted_data_path
    assert decrypted == body
  end

  defp key, do: "testiekeyphraseforcipher"|> Cipher.generate_key
  defp iv, do: "testieivphraseforcipher" |> Cipher.generate_iv
end
