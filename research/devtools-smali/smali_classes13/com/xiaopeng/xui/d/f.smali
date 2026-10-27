.class public Lcom/xiaopeng/xui/d/f;
.super Ljava/lang/Object;
.source "XLogUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/d/f$a;,
        Lcom/xiaopeng/xui/d/f$b;
    }
.end annotation


# static fields
.field private static Wm:I

.field private static Wn:Ljava/lang/String;

.field private static Wp:Z

.field private static Wq:Z

.field private static abq:Lcom/xiaopeng/xui/d/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "xpui"

    sput-object v0, Lcom/xiaopeng/xui/d/f;->Wn:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/xiaopeng/xui/d/f$a;

    invoke-direct {v0}, Lcom/xiaopeng/xui/d/f$a;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/d/f;->abq:Lcom/xiaopeng/xui/d/f$b;

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xui/d/f;->Wp:Z

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xui/d/f;->Wq:Z

    .line 26
    const/4 v0, 0x4

    sput v0, Lcom/xiaopeng/xui/d/f;->Wm:I

    return-void
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    if-eqz p4, :cond_2

    .line 283
    const-string p2, " (T:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    sget-object p2, Lcom/xiaopeng/xui/d/f;->Wn:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 285
    const-string p2, "(C:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/xiaopeng/xui/d/f;->Wn:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
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

    .line 291
    :cond_2
    if-eqz p3, :cond_3

    .line 292
    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4

    .line 243
    nop

    .line 244
    nop

    .line 245
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 246
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 247
    nop

    .line 248
    array-length v2, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 249
    aget-object v1, v1, v3

    goto :goto_0

    .line 252
    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    goto :goto_1

    .line 258
    :cond_1
    const/4 v1, 0x0

    .line 259
    :goto_1
    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    .line 260
    :cond_2
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/xui/d/f;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p2

    .line 263
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xui/d/f;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 264
    if-nez p1, :cond_5

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 266
    sget-object v0, Lcom/xiaopeng/xui/d/f;->Wn:Ljava/lang/String;

    goto :goto_2

    .line 268
    :cond_4
    goto :goto_2

    .line 272
    :cond_5
    move-object v0, p1

    :goto_2
    invoke-static {p0, v0, p2}, Lcom/xiaopeng/xui/d/f;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 276
    sget-object v0, Lcom/xiaopeng/xui/d/f;->abq:Lcom/xiaopeng/xui/d/f$b;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/xui/d/f$b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 109
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/xui/d/f;->dQ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/xui/d/f;->Wq:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/d/f;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 113
    :cond_0
    return-void
.end method

.method public static dQ(I)Z
    .locals 1

    .line 56
    sget v0, Lcom/xiaopeng/xui/d/f;->Wm:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/d/f;->oK()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 102
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/xui/d/f;->dQ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/xui/d/f;->Wq:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/d/f;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 138
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/xui/d/f;->dQ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/xui/d/f;->Wq:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/d/f;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 142
    :cond_0
    return-void
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 173
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/xui/d/f;->dQ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/xui/d/f;->Wq:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/d/f;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 177
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 208
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/xui/d/f;->dQ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/xui/d/f;->Wq:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/d/f;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 212
    :cond_0
    return-void
.end method

.method private static o(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 299
    if-nez p0, :cond_0

    .line 300
    const/4 p0, 0x0

    return-object p0

    .line 301
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 302
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 304
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static oK()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/xiaopeng/xui/d/f;->Wp:Z

    return v0
.end method
