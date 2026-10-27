.class public Lcom/xiaopeng/speech/common/util/c;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/common/util/c$a;,
        Lcom/xiaopeng/speech/common/util/c$b;
    }
.end annotation


# static fields
.field public static a:I = 0x2

.field public static b:Ljava/lang/String;

.field public static c:Lcom/xiaopeng/speech/common/util/c$b;

.field public static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/xiaopeng/speech/common/util/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/common/util/c;->b:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/xiaopeng/speech/common/util/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/c$a;-><init>(Lcom/xiaopeng/speech/common/util/c$1;)V

    sput-object v0, Lcom/xiaopeng/speech/common/util/c;->c:Lcom/xiaopeng/speech/common/util/c$b;

    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/xiaopeng/speech/common/util/c;->d:Z

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 285
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 286
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 287
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 289
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    const-string p2, "(T:"

    .line 268
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    sget-object p4, Lcom/xiaopeng/speech/common/util/c;->b:Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string p4, "(C:"

    .line 270
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/xiaopeng/speech/common/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p4, "at ("

    .line 272
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p3, :cond_2

    const/16 p0, 0xa

    .line 275
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4

    if-eqz p4, :cond_1

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    array-length v2, v0

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 243
    aget-object v1, v0, v3

    :cond_0
    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    goto :goto_0

    :cond_1
    const-string v0, ""

    const/4 v1, 0x0

    .line 250
    :goto_0
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p2

    .line 251
    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    move-object p1, v0

    .line 255
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/speech/common/util/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 259
    sget-object v0, Lcom/xiaopeng/speech/common/util/c;->c:Lcom/xiaopeng/speech/common/util/c$b;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/speech/common/util/c$b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 96
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 99
    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x6

    .line 216
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 219
    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    .line 103
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x6

    .line 223
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const-string v2, "Exception occurs at"

    .line 226
    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/speech/common/util/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 124
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/xiaopeng/speech/common/util/c;->d:Z

    return v0
.end method

.method public static a(I)Z
    .locals 1

    .line 49
    sget v0, Lcom/xiaopeng/speech/common/util/c;->a:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/common/util/c;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .line 333
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 335
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 131
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 134
    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    .line 138
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    .line 195
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    .line 202
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 205
    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    .line 209
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/c;->a(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method
