.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static OooO00o([Ljava/lang/String;ZZ)LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;
    .locals 7

    .line 63
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 64
    new-instance p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;

    invoke-direct {p0, v2, v1, v1}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 75
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p1, :cond_1

    const-string p1, "su"

    goto :goto_0

    :cond_1
    const-string p1, "sh"

    :goto_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 76
    :try_start_2
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 77
    :try_start_3
    array-length v3, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, p0, v4

    if-nez v5, :cond_2

    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    const-string v5, "\n"

    .line 84
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "exit\n"

    .line 87
    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 90
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p2, :cond_5

    .line 93
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 94
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 95
    :try_start_6
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 96
    :try_start_7
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 98
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 99
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 101
    :cond_4
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 102
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_10

    :catch_0
    move-exception v5

    goto/16 :goto_c

    :catch_1
    move-exception v5

    goto/16 :goto_13

    :catchall_1
    move-exception p0

    goto/16 :goto_1a

    :catch_2
    move-exception v4

    move-object v5, v4

    .line 122
    move-object v4, v1

    goto/16 :goto_c

    .line 102
    :catch_3
    move-exception v4

    move-object v5, v4

    .line 136
    move-object v4, v1

    goto/16 :goto_13

    .line 102
    :catch_4
    move-exception v3

    move-object v5, v3

    .line 122
    move-object v3, v1

    goto :goto_5

    .line 102
    :catch_5
    move-exception v3

    move-object v5, v3

    .line 136
    move-object v3, v1

    goto :goto_6

    .line 102
    :catch_6
    move-exception v2

    move-object v5, v2

    .line 122
    move-object v2, v1

    move-object v3, v2

    :goto_5
    move-object v4, v3

    goto/16 :goto_c

    .line 102
    :catch_7
    move-exception v2

    move-object v5, v2

    .line 136
    move-object v2, v1

    move-object v3, v2

    :goto_6
    move-object v4, v3

    goto/16 :goto_13

    .line 121
    :catch_8
    move-exception p2

    move v2, p0

    move-object v5, p2

    goto :goto_7

    :catch_9
    move-exception p2

    move v2, p0

    move-object v5, p2

    goto :goto_8

    .line 112
    :cond_5
    move-object p2, v1

    move-object v2, p2

    move-object v3, v2

    move-object v4, v3

    :cond_6
    :try_start_9
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    if-eqz v3, :cond_7

    .line 115
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v4, :cond_e

    .line 118
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto/16 :goto_17

    .line 121
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_17

    :catchall_2
    move-exception p0

    .line 159
    move-object v3, v1

    goto/16 :goto_1a

    .line 121
    :catch_b
    move-exception p0

    move-object v5, p0

    .line 122
    :goto_7
    move-object p2, v1

    move-object v3, p2

    goto :goto_b

    .line 121
    :catch_c
    move-exception p0

    move-object v5, p0

    .line 136
    :goto_8
    move-object p2, v1

    move-object v3, p2

    goto :goto_12

    .line 121
    :catchall_3
    move-exception p0

    goto :goto_9

    :catch_d
    move-exception p0

    move-object v5, p0

    goto :goto_a

    .line 135
    :catch_e
    move-exception p0

    move-object v5, p0

    goto :goto_11

    .line 121
    :catchall_4
    move-exception p0

    move-object p1, v1

    .line 159
    :goto_9
    move-object v0, v1

    move-object v3, v0

    goto/16 :goto_1a

    .line 121
    :catch_f
    move-exception p0

    move-object v5, p0

    move-object p1, v1

    .line 122
    :goto_a
    move-object p2, v1

    move-object v0, p2

    move-object v3, v0

    :goto_b
    move-object v4, v3

    move p0, v2

    move-object v2, v4

    :goto_c
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v0, :cond_8

    .line 126
    :try_start_b
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_d

    :catch_10
    move-exception v0

    goto :goto_e

    :cond_8
    :goto_d
    if-eqz v3, :cond_9

    .line 129
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v4, :cond_a

    .line 132
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_f

    .line 135
    :goto_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_f
    if-eqz p1, :cond_f

    goto :goto_17

    :catchall_5
    move-exception p0

    .line 159
    :goto_10
    move-object v1, v4

    goto :goto_1a

    .line 135
    :catch_11
    move-exception p0

    move-object v5, p0

    move-object p1, v1

    .line 136
    :goto_11
    move-object p2, v1

    move-object v0, p2

    move-object v3, v0

    :goto_12
    move-object v4, v3

    move p0, v2

    move-object v2, v4

    :goto_13
    :try_start_c
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v0, :cond_b

    .line 142
    :try_start_d
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_14

    :catch_12
    move-exception v0

    goto :goto_15

    :cond_b
    :goto_14
    if-eqz v3, :cond_c

    .line 145
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_c
    if-eqz v4, :cond_d

    .line 148
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12

    goto :goto_16

    .line 151
    :goto_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_16
    if-eqz p1, :cond_f

    .line 155
    :cond_e
    :goto_17
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 158
    :cond_f
    new-instance p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;

    if-nez p2, :cond_10

    move-object p2, v1

    goto :goto_18

    :cond_10
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_18
    if-nez v2, :cond_11

    goto :goto_19

    .line 159
    :cond_11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_19
    invoke-direct {p1, p0, p2, v1}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 102
    :catchall_6
    move-exception p0

    move-object v1, v4

    .line 159
    :goto_1a
    if-eqz v0, :cond_12

    .line 160
    :try_start_e
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1b

    :catch_13
    move-exception p2

    goto :goto_1c

    :cond_12
    :goto_1b
    if-eqz v3, :cond_13

    .line 163
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_13
    if-eqz v1, :cond_14

    .line 166
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_13

    goto :goto_1d

    .line 169
    :goto_1c
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    :goto_1d
    if-eqz p1, :cond_15

    .line 173
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 175
    :cond_15
    throw p0
.end method

.method public static OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 33
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_4

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 38
    :cond_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 39
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v2, "AES"

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    const-string v2, "AES/CBC/NoPadding"

    .line 41
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 42
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 52
    move-object v1, p1

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v3

    .line 47
    new-array v1, v0, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x2

    .line 50
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    .line 51
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, p1

    :goto_2
    if-nez p0, :cond_3

    const-string p0, ""

    return-object p0

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :cond_4
    :goto_3
    const-string p0, ""

    return-object p0
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static OooO00o(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)V
    .locals 10

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getService"

    .line 5
    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "usb"

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v1, "android.hardware.usb.IUsbManager"

    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    .line 11
    array-length v4, v1

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v1, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "Stub"

    .line 12
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v8, :cond_0

    move-object v3, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "asInterface"

    .line 17
    :try_start_3
    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 18
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "grantDevicePermission"

    const/4 v4, 0x2

    :try_start_4
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/hardware/usb/UsbDevice;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 20
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "android.os.UserHandle"

    .line 23
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "getUserId"

    .line 25
    :try_start_5
    new-array v3, v2, [Ljava/lang/Class;

    aput-object v7, v3, v5

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 26
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v3, "setDevicePackage"

    const/4 v6, 0x3

    :try_start_6
    new-array v6, v6, [Ljava/lang/Class;

    const-class v8, Landroid/hardware/usb/UsbDevice;

    aput-object v8, v6, v5

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v2

    aput-object v7, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 29
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 32
    sget-object p0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p1, "OldCommonUtil - old"

    const-string v0, "ServiceManager Class except"

    invoke-virtual {p0, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static OooO00o(Ljava/lang/String;)[B
    .locals 1

    if-eqz p0, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 61
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 62
    new-array p0, p0, [B

    return-object p0
.end method

.method public static OooO00o([B[B)[B
    .locals 3

    .line 227
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 228
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static OooO00o([B[BILjava/lang/String;)[B
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 176
    array-length v1, p0

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 182
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_1

    const-string v1, "RSA"

    const-string v2, "BC"

    .line 183
    invoke-static {v1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "RSA"

    .line 185
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 191
    :goto_0
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 192
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 195
    :cond_2
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    const/4 v1, 0x2

    .line 196
    invoke-virtual {p3, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 197
    array-length p1, p0

    .line 198
    div-int/lit8 p2, p2, 0x8

    .line 205
    div-int v1, p1, p2

    if-lez v1, :cond_5

    .line 207
    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 208
    new-array v4, p2, [B

    move v5, v2

    move-object v6, v3

    move v3, v5

    :goto_1
    if-ge v3, v1, :cond_3

    .line 211
    invoke-static {p0, v5, v4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    invoke-virtual {p3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-static {v6, v7}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o([B[B)[B

    move-result-object v6

    add-int/2addr v5, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eq v5, p1, :cond_4

    sub-int/2addr p1, v5

    .line 217
    new-array p2, p1, [B

    .line 218
    invoke-static {p0, v5, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {v6, p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o([B[B)[B

    move-result-object p0

    goto :goto_2

    .line 226
    :cond_4
    move-object v0, v6

    goto :goto_3

    .line 223
    :cond_5
    invoke-virtual {p3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_2
    move-object v0, p0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static OooO0O0(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " +(\\d) +(?=\\[\\w+\\s*]:)(?=.*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string v0, "cat /proc/asound/cards"

    .line 3
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(Ljava/lang/String;ZZ)LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;

    move-result-object v0

    .line 4
    iget v1, v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;->OooO00o:I

    if-nez v1, :cond_1

    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v0, v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;->OooO0O0:Ljava/lang/String;

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 7
    invoke-virtual {p0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    :try_start_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 12
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static OooO0OO(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ".r1a5s"

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loostone/libserver/version1/entity/PMConfig;->getIv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0Oo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "s.1="

    const-string v1, "4z;l"

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loostone/libserver/version1/entity/PMConfig;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "UTF-8"

    const-string v1, ""

    .line 1
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result p0

    .line 5
    new-array p0, p0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    move-object v2, p0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_0

    .line 12
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 14
    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 15
    :try_start_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 17
    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    move-object p0, v1

    :goto_3
    return-object p0
.end method

.method public static OooO0o0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 19
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 21
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 27
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    .line 47
    :catchall_0
    move-exception v0

    move-object v1, p0

    goto :goto_5

    .line 27
    :catch_1
    move-exception v1

    .line 28
    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_2

    .line 27
    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    goto :goto_2

    :cond_1
    return-object v1

    :catchall_2
    move-exception p0

    .line 47
    move-object v2, v1

    goto :goto_6

    .line 27
    :catch_3
    move-exception p0

    .line 28
    move-object v2, v1

    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_2

    .line 32
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 34
    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 40
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    .line 42
    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 47
    :cond_3
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3
    move-exception v0

    :goto_5
    move-object p0, v0

    :goto_6
    if-eqz v1, :cond_4

    .line 48
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    .line 50
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    .line 56
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    .line 58
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    :cond_5
    :goto_8
    throw p0
.end method

.method public static OooO0oO(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
