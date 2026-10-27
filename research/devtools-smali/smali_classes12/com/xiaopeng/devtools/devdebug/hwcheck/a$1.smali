.class Lcom/xiaopeng/devtools/devdebug/hwcheck/a$1;
.super Landroid/os/AsyncTask;
.source "HwCheckModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/devdebug/hwcheck/a;->fi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic rl:Lcom/xiaopeng/devtools/devdebug/hwcheck/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/devdebug/hwcheck/a;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$1;->rl:Lcom/xiaopeng/devtools/devdebug/hwcheck/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 167
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    nop

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 174
    return-void

    .line 176
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    const-string v1, "HwCheckModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 181
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    goto :goto_1

    .line 182
    :catch_0
    move-exception p2

    .line 183
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 189
    :goto_1
    nop

    .line 190
    nop

    .line 191
    nop

    .line 192
    nop

    .line 194
    const/4 p2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 195
    :try_start_2
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 196
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    :try_start_4
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    const/high16 p2, 0x100000

    :try_start_5
    new-array p2, p2, [B

    .line 200
    invoke-virtual {p1, p2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    .line 201
    :goto_2
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 202
    const/4 v5, 0x0

    invoke-virtual {v3, p2, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 203
    invoke-virtual {p1, p2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    goto :goto_2

    .line 206
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 212
    nop

    .line 214
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 217
    goto :goto_3

    .line 215
    :catch_1
    move-exception p2

    .line 216
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 220
    :goto_3
    nop

    .line 222
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 225
    goto :goto_4

    .line 223
    :catch_2
    move-exception p2

    .line 224
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    :goto_4
    nop

    .line 230
    :try_start_8
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 233
    goto :goto_5

    .line 231
    :catch_3
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    :goto_5
    nop

    .line 238
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    goto/16 :goto_d

    .line 207
    :catch_4
    move-exception p2

    goto :goto_9

    .line 212
    :catchall_0
    move-exception v0

    move-object v3, p2

    goto :goto_6

    .line 207
    :catch_5
    move-exception v3

    move-object v7, v3

    move-object v3, p2

    move-object p2, v7

    goto :goto_9

    .line 212
    :catchall_1
    move-exception v0

    move-object v2, p2

    move-object v3, v2

    :goto_6
    move-object p2, v0

    goto/16 :goto_f

    .line 207
    :catch_6
    move-exception v2

    move-object v3, p2

    move-object p2, v2

    move-object v2, v3

    goto :goto_9

    .line 212
    :catchall_2
    move-exception p1

    move-object v2, p2

    goto :goto_7

    .line 207
    :catch_7
    move-exception p1

    move-object v2, p2

    goto :goto_8

    .line 212
    :catchall_3
    move-exception p1

    move-object v1, p2

    move-object v2, v1

    :goto_7
    move-object v3, v2

    move-object p2, p1

    move-object p1, v3

    goto :goto_f

    .line 207
    :catch_8
    move-exception p1

    move-object v1, p2

    move-object v2, v1

    :goto_8
    move-object v3, v2

    move-object p2, p1

    move-object p1, v3

    .line 208
    :goto_9
    :try_start_a
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    const-string v4, "HwCheckModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 212
    if-eqz v3, :cond_4

    .line 214
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 217
    goto :goto_a

    .line 215
    :catch_9
    move-exception p2

    .line 216
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 220
    :cond_4
    :goto_a
    if-eqz v2, :cond_5

    .line 222
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 225
    goto :goto_b

    .line 223
    :catch_a
    move-exception p2

    .line 224
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    :cond_5
    :goto_b
    if-eqz p1, :cond_6

    .line 230
    :try_start_d
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 233
    goto :goto_c

    .line 231
    :catch_b
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    :cond_6
    :goto_c
    if-eqz v1, :cond_7

    .line 238
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 241
    :goto_d
    goto :goto_e

    .line 239
    :catch_c
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 244
    :cond_7
    :goto_e
    return-void

    .line 212
    :catchall_4
    move-exception p2

    :goto_f
    if-eqz v3, :cond_8

    .line 214
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 217
    goto :goto_10

    .line 215
    :catch_d
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 220
    :cond_8
    :goto_10
    if-eqz v2, :cond_9

    .line 222
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 225
    goto :goto_11

    .line 223
    :catch_e
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    :cond_9
    :goto_11
    if-eqz p1, :cond_a

    .line 230
    :try_start_11
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 233
    goto :goto_12

    .line 231
    :catch_f
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    :cond_a
    :goto_12
    if-eqz v1, :cond_b

    .line 238
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    .line 241
    goto :goto_13

    .line 239
    :catch_10
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 241
    :cond_b
    :goto_13
    throw p2
.end method

.method private bn(Ljava/lang/String;)V
    .locals 1

    .line 247
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    .line 86
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 90
    :goto_0
    const-string p1, "sys.usb.label"

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/modem/upgrade_android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/data/upgrade_android"

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$1;->A(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/modem/firmware.bin"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/data/firmware.bin"

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$1;->A(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    const-string p1, "ctl.start"

    const-string v0, "upgrade_modem"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    goto :goto_1

    .line 102
    :catch_1
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 106
    :goto_1
    sget-object p1, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    const-string v0, "upgrade_modem"

    invoke-static {v0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 107
    nop

    .line 115
    const-string p1, "upgrade_modem"

    invoke-static {p1}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object p1

    .line 116
    const-string v0, "HwCheckModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    const/4 p1, 0x0

    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/modem.txt"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 122
    :cond_1
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 127
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "upgrade success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    const/4 v1, 0x1

    .line 130
    nop

    .line 134
    :cond_3
    const-string v3, "/data/firmware.bin"

    invoke-direct {p0, v3}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$1;->bn(Ljava/lang/String;)V

    .line 135
    const-string v3, "/data/upgrade_android"

    invoke-direct {p0, v3}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$1;->bn(Ljava/lang/String;)V

    .line 137
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    nop

    .line 144
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 147
    goto :goto_2

    .line 145
    :catch_2
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    :goto_2
    nop

    .line 151
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 154
    goto :goto_3

    .line 152
    :catch_3
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    :goto_3
    return-object v3

    .line 142
    :catchall_0
    move-exception p1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_8

    .line 138
    :catch_4
    move-exception v3

    move v7, v1

    move-object v1, v0

    move-object v0, v3

    move v3, v7

    goto :goto_4

    .line 142
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 138
    :catch_5
    move-exception v0

    move v3, v1

    move-object v1, p1

    goto :goto_4

    .line 142
    :catchall_2
    move-exception v0

    move-object v2, p1

    goto :goto_8

    .line 138
    :catch_6
    move-exception v0

    move-object v2, p1

    move v3, v1

    move-object v1, v2

    .line 139
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    const-string v4, "HwCheckModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_4
    invoke-static {v4, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 142
    if-eqz v1, :cond_5

    .line 144
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 147
    goto :goto_5

    .line 145
    :catch_7
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    .line 151
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 154
    :goto_6
    goto :goto_7

    .line 152
    :catch_8
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 157
    :cond_6
    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 142
    :catchall_3
    move-exception v0

    move-object p1, v1

    :goto_8
    if-eqz p1, :cond_7

    .line 144
    :try_start_a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 147
    goto :goto_9

    .line 145
    :catch_9
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    :cond_7
    :goto_9
    if-eqz v2, :cond_8

    .line 151
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 154
    goto :goto_a

    .line 152
    :catch_a
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    :cond_8
    :goto_a
    throw v0

    .line 110
    :cond_9
    const-wide/16 v2, 0xbb8

    :try_start_c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_b

    .line 113
    :goto_b
    goto/16 :goto_1

    .line 111
    :catch_b
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .line 162
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/bean/event/ModemUpgradeEvent;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v1, p1}, Lcom/xiaopeng/devtools/bean/event/ModemUpgradeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$1;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
