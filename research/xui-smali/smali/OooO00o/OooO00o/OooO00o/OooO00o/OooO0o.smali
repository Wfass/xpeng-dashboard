.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;
    }
.end annotation


# static fields
.field public static final OooO00o:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;ZZ)LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;
    .locals 9

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2
    const/4 p0, 0x0

    const/4 v3, -0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p1, :cond_0

    const-string p1, "su"

    goto :goto_0

    :cond_0
    const-string p1, "sh"

    :goto_0
    :try_start_1
    invoke-virtual {v4, p1, p0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 3
    :try_start_2
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_1
    if-ge v2, v0, :cond_2

    .line 4
    :try_start_3
    aget-object v5, v1, v2

    if-nez v5, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 7
    sget-object v5, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58
    :catchall_0
    move-exception p2

    goto/16 :goto_9

    :catch_0
    move-exception p2

    goto/16 :goto_a

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_5

    .line 14
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v3, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 19
    :try_start_7
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 23
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 24
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 26
    sget-object v5, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 29
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :goto_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 32
    sget-object v5, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 41
    :cond_4
    move-object p0, v2

    goto/16 :goto_5

    .line 32
    :catchall_1
    move-exception p0

    .line 89
    move-object p2, p0

    goto/16 :goto_15

    .line 32
    :catch_1
    move-exception p0

    .line 59
    move-object v8, p2

    move-object p2, p0

    move-object p0, v4

    move v4, v0

    move-object v0, p1

    move-object p1, v8

    goto/16 :goto_e

    .line 32
    :catchall_2
    move-exception p2

    goto/16 :goto_16

    :catch_2
    move-exception v3

    .line 59
    move-object v8, v3

    move-object v3, p0

    move-object p0, v4

    move v4, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v8

    goto/16 :goto_e

    .line 32
    :catch_3
    move-exception v2

    .line 59
    move-object v3, p0

    move-object p0, v4

    move v4, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v2

    move-object v2, v3

    goto/16 :goto_e

    .line 32
    :catch_4
    move-exception v1

    .line 59
    move-object v2, p0

    move-object v3, v2

    move-object p0, v4

    move v4, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v1

    move-object v1, v3

    goto/16 :goto_e

    .line 58
    :catch_5
    move-exception p2

    move v3, v0

    goto :goto_a

    .line 41
    :cond_5
    move-object p2, p0

    move-object v1, p2

    move-object v3, v1

    :goto_5
    :try_start_9
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    .line 44
    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    if-eqz p0, :cond_6

    .line 48
    :try_start_a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_7

    .line 51
    :catch_7
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    .line 55
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_8

    .line 58
    :catch_8
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    :cond_7
    :goto_8
    move v4, v0

    goto/16 :goto_12

    .line 89
    :goto_9
    move-object v2, p0

    goto/16 :goto_16

    .line 59
    :goto_a
    move-object v1, p0

    move-object v2, v1

    move-object v0, p1

    move-object p1, v2

    move-object p0, v4

    move v4, v3

    goto :goto_d

    .line 58
    :catchall_3
    move-exception p2

    goto :goto_b

    :catch_9
    move-exception p2

    goto :goto_c

    :catchall_4
    move-exception p1

    move-object p2, p1

    move-object p1, p0

    .line 89
    :goto_b
    move-object v2, p0

    move-object v4, v2

    goto/16 :goto_16

    .line 58
    :catch_a
    move-exception p1

    move-object p2, p1

    move-object p1, p0

    .line 59
    :goto_c
    move-object v1, p0

    move-object v2, v1

    move-object v0, p1

    move v4, v3

    move-object p1, v2

    :goto_d
    move-object v3, p1

    :goto_e
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz p0, :cond_8

    .line 63
    :try_start_d
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_f

    .line 66
    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_f
    if-eqz v2, :cond_9

    .line 70
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_10

    .line 73
    :catch_c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_10
    if-eqz v3, :cond_a

    .line 77
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_11

    .line 80
    :catch_d
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_11
    if-eqz v0, :cond_b

    .line 83
    move-object p2, p1

    move-object p1, v0

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 86
    move-object p1, p2

    :cond_b
    new-instance p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;

    if-nez p1, :cond_c

    const-string p1, ""

    goto :goto_13

    .line 88
    :cond_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_13
    if-nez v1, :cond_d

    const-string p2, ""

    goto :goto_14

    .line 89
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_14
    invoke-direct {p0, v4, p1, p2}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_5
    move-exception p1

    move-object v4, p0

    move-object p2, p1

    move-object p1, v0

    :goto_15
    move-object p0, v3

    :goto_16
    if-eqz v4, :cond_e

    .line 90
    :try_start_10
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_17

    .line 93
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_17
    if-eqz v2, :cond_f

    .line 97
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_18

    .line 100
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_18
    if-eqz p0, :cond_10

    .line 104
    :try_start_12
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    goto :goto_19

    .line 107
    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_19
    if-eqz p1, :cond_11

    .line 110
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 112
    :cond_11
    throw p2
.end method
