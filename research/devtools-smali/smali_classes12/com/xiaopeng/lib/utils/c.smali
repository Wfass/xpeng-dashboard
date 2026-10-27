.class public Lcom/xiaopeng/lib/utils/c;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/utils/c$a;,
        Lcom/xiaopeng/lib/utils/c$b;
    }
.end annotation


# static fields
.field public static Wm:I

.field public static Wn:Ljava/lang/String;

.field public static Wo:Lcom/xiaopeng/lib/utils/c$b;

.field public static Wp:Z

.field public static Wq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x2

    sput v0, Lcom/xiaopeng/lib/utils/c;->Wm:I

    .line 24
    invoke-static {}, Lcom/xiaopeng/lib/utils/c;->getAppName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/c;->Wn:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/xiaopeng/lib/utils/c$a;

    invoke-direct {v0}, Lcom/xiaopeng/lib/utils/c$a;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/c;->Wo:Lcom/xiaopeng/lib/utils/c$b;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/lib/utils/c;->Wp:Z

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    return-void
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    if-eqz p4, :cond_2

    .line 288
    const-string p2, " (T:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    sget-object p2, Lcom/xiaopeng/lib/utils/c;->Wn:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 290
    const-string p2, "(C:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/xiaopeng/lib/utils/c;->Wn:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_0
    const-string p2, "at ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_2
    if-eqz p3, :cond_3

    .line 295
    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4

    .line 246
    nop

    .line 247
    nop

    .line 249
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 251
    nop

    .line 252
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 253
    aget-object v1, v1, v3

    goto :goto_0

    .line 256
    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    goto :goto_1

    .line 262
    :cond_1
    const/4 v1, 0x0

    .line 263
    :goto_1
    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    .line 264
    :cond_2
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p2

    .line 267
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/c;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 268
    if-nez p1, :cond_5

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 270
    sget-object v0, Lcom/xiaopeng/lib/utils/c;->Wn:Ljava/lang/String;

    goto :goto_2

    .line 272
    :cond_4
    goto :goto_2

    .line 275
    :cond_5
    move-object v0, p1

    :goto_2
    invoke-static {p0, v0, p2}, Lcom/xiaopeng/lib/utils/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 119
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 123
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 218
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 222
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 126
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 130
    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 279
    sget-object v0, Lcom/xiaopeng/lib/utils/c;->Wo:Lcom/xiaopeng/lib/utils/c$b;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/lib/utils/c$b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 190
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 194
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 232
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 236
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 225
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 229
    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 112
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 116
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    .line 98
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 102
    return-void
.end method

.method public static dQ(I)Z
    .locals 1

    .line 58
    sget v0, Lcom/xiaopeng/lib/utils/c;->Wm:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/utils/c;->oK()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 69
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 73
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    .line 204
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 208
    return-void
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 105
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 109
    return-void
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 140
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 144
    return-void
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 2

    .line 353
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 354
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 355
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 176
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 180
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 211
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 215
    return-void
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 147
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 151
    return-void
.end method

.method private static o(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 301
    if-nez p0, :cond_0

    .line 302
    const/4 p0, 0x0

    return-object p0

    .line 304
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 305
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 306
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 307
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static oK()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/xiaopeng/lib/utils/c;->Wp:Z

    return v0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3

    .line 168
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->dQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/c;->Wq:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 172
    return-void
.end method
