defmodule Alphonse do

  @moduledoc """
    A module wrapper to encrypt and decrypt files with aes-128-cbc
  """

  @doc """
    Encrypt a file with a key and iv using aes-128-cbc
  """
  def encrypt(source, key, iv, output) do
    case File.read(source) do
      {:ok, body} -> 
        encrypted_data = encrypt_source body, key, iv
        write_file encrypted_data, output
        {:ok, encrypted_data}
      {:error, reason} -> {:error, reason}
    end    
  end

  @doc """
    Decrypt a file with a key and iv using aes-128-cbc
  """
  def decrypt(encrypted_source, key, iv, output) do
    case File.read(encrypted_source) do
      {:ok, body} -> 
        decrypted_data = decrypt_source body, key, iv
        write_file decrypted_data, output
        {:ok, decrypted_data}
      {:error, reason} -> {:error, reason}
    end 
  end

  defp encrypt_source(body, key, iv) do
    Cipher.encrypt body, Cipher.generate_key(key), Cipher.generate_iv(iv)
  end
  
  defp decrypt_source(encrypted_body, key, iv) do
    Cipher.decrypt encrypted_body, Cipher.generate_key(key), Cipher.generate_iv(iv)
  end

  defp write_file(body, output) do
    case File.open output, [:write] do
      {:ok, file} ->
        IO.binwrite file, body
        File.close file
      {:error, :enoent} ->
        File.touch output
        {:ok, file} = File.read output, [:write]
        IO.binwrite file, body
        File.close file
      {:error, reason} -> {:error, reason}
    end
  end

end
