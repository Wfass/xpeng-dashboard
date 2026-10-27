.class public Lcom/amap/api/services/a/de;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static a(Lcom/amap/api/services/a/co;Ljava/lang/String;)[B
    .locals 4

    .line 14
    nop

    .line 15
    nop

    .line 16
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 18
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/co;->a(Ljava/lang/String;)Lcom/amap/api/services/a/co$b;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    if-nez v3, :cond_1

    .line 33
    nop

    .line 38
    nop

    .line 40
    if-eqz v3, :cond_0

    .line 41
    :try_start_1
    invoke-virtual {v3}, Lcom/amap/api/services/a/co$b;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    nop

    .line 19
    :goto_1
    return-object v1

    .line 20
    :cond_1
    :try_start_2
    invoke-virtual {v3, v0}, Lcom/amap/api/services/a/co$b;->a(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    if-nez v0, :cond_4

    .line 33
    if-eqz v0, :cond_2

    .line 34
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 36
    :catch_1
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 38
    :cond_2
    :goto_2
    nop

    .line 40
    :goto_3
    if-eqz v3, :cond_3

    .line 41
    :try_start_4
    invoke-virtual {v3}, Lcom/amap/api/services/a/co$b;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 43
    :catch_2
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 45
    :cond_3
    :goto_4
    nop

    .line 21
    :goto_5
    return-object v1

    .line 22
    :cond_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 23
    :try_start_6
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 26
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/co;->c(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 28
    nop

    .line 33
    if-eqz v0, :cond_5

    .line 34
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    .line 36
    :catch_3
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 38
    :cond_5
    :goto_6
    nop

    .line 40
    :goto_7
    if-eqz v3, :cond_6

    .line 41
    :try_start_8
    invoke-virtual {v3}, Lcom/amap/api/services/a/co$b;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_8

    .line 43
    :catch_4
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 45
    :cond_6
    :goto_8
    nop

    .line 28
    :goto_9
    return-object v2

    .line 29
    :catch_5
    move-exception p0

    move-object v1, v2

    goto :goto_a

    .line 32
    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_10

    .line 29
    :catch_6
    move-exception p0

    :goto_a
    move-object v2, v0

    goto :goto_b

    :catch_7
    move-exception p0

    goto :goto_b

    .line 32
    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_10

    .line 29
    :catch_8
    move-exception p0

    move-object v3, v2

    .line 30
    :goto_b
    :try_start_9
    const-string p1, "Utils"

    const-string v0, "readSingleLog"

    invoke-static {p0, p1, v0}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 31
    nop

    .line 33
    if-eqz v2, :cond_7

    .line 34
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_c

    .line 36
    :catch_9
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 38
    :cond_7
    :goto_c
    nop

    .line 40
    :goto_d
    if-eqz v3, :cond_8

    .line 41
    :try_start_b
    invoke-virtual {v3}, Lcom/amap/api/services/a/co$b;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_e

    .line 43
    :catch_a
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    .line 45
    :cond_8
    :goto_e
    nop

    .line 46
    :goto_f
    nop

    .line 47
    return-object v1

    .line 32
    :catchall_2
    move-exception p0

    .line 33
    :goto_10
    if-eqz v2, :cond_9

    .line 34
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_11

    .line 36
    :catch_b
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 38
    :cond_9
    :goto_11
    nop

    .line 40
    :goto_12
    if-eqz v3, :cond_a

    .line 41
    :try_start_d
    invoke-virtual {v3}, Lcom/amap/api/services/a/co$b;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_13

    .line 43
    :catch_c
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    .line 45
    :cond_a
    :goto_13
    nop

    .line 32
    :goto_14
    throw p0
.end method
