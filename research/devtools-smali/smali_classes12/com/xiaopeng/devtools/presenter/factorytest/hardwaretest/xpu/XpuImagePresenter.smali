.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;
.super Ljava/lang/Object;
.source "XpuImagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;
    }
.end annotation


# static fields
.field private static final xD:[B


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final xE:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private final xF:Lcom/xiaopeng/devtools/system/c/c;

.field private final xG:[B

.field private final xH:[B

.field private final xI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/b;

.field private xJ:Z

.field private xK:I

.field private xL:I

.field private final xM:Lcom/xiaopeng/devtools/system/c/c$a;

.field private xN:Z

.field private xO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xD:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/b;)V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xG:[B

    .line 45
    const/high16 v0, 0x200000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xH:[B

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xJ:Z

    .line 49
    new-instance v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$1;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)V

    iput-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->mHandler:Landroid/os/Handler;

    .line 63
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xK:I

    .line 64
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xL:I

    .line 65
    new-instance v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)V

    iput-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xM:Lcom/xiaopeng/devtools/system/c/c$a;

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xN:Z

    .line 162
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    .line 165
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/b;

    .line 166
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xE:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 167
    new-instance p1, Lcom/xiaopeng/devtools/system/c/c;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/system/c/c;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xF:Lcom/xiaopeng/devtools/system/c/c;

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xF:Lcom/xiaopeng/devtools/system/c/c;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xM:Lcom/xiaopeng/devtools/system/c/c$a;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/system/c/c;->a(Lcom/xiaopeng/devtools/system/c/c$a;)V

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xF:Lcom/xiaopeng/devtools/system/c/c;

    const-string v0, "172.20.1.22"

    const/16 v1, 0x775b

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/devtools/system/c/c;->connect(Ljava/lang/String;I)V

    .line 170
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xL:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xN:Z

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xJ:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xK:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)[B
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xG:[B

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xL:I

    return p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xK:I

    return p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xE:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Lcom/xiaopeng/devtools/system/c/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xF:Lcom/xiaopeng/devtools/system/c/c;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xJ:Z

    return p0
.end method

.method private synthetic jz()V
    .locals 7

    .line 174
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xN:Z

    if-eqz v0, :cond_6

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 177
    if-eqz v0, :cond_5

    .line 178
    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xT:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xS:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    .line 179
    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 180
    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ya:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v2

    aget-byte v2, v0, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 193
    :cond_1
    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->yb:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xH:[B

    iget v5, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    sget-object v6, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->yb:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    .line 194
    invoke-virtual {v6}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v6

    sub-int v6, v1, v6

    .line 193
    invoke-static {v0, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 195
    iget v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    sget-object v3, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->yb:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    .line 196
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xH:[B

    iget v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/b;

    if-eqz v2, :cond_4

    .line 198
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/b;

    invoke-interface {v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/b;->e(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 188
    :cond_2
    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->yb:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xH:[B

    iget v4, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    sget-object v5, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->yb:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    .line 189
    invoke-virtual {v5}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v5

    sub-int v5, v1, v5

    .line 188
    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 190
    iget v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    sget-object v3, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->yb:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    .line 191
    goto :goto_1

    .line 182
    :cond_3
    iput v4, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    .line 183
    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->yb:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xH:[B

    iget v4, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    sget-object v5, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->yb:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    .line 184
    invoke-virtual {v5}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v5

    sub-int v5, v1, v5

    .line 183
    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 185
    iget v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    sget-object v3, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->yb:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    .line 186
    nop

    .line 202
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xF:Lcom/xiaopeng/devtools/system/c/c;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/system/c/c;->y([B)V

    .line 204
    :cond_5
    goto/16 :goto_0

    .line 206
    :cond_6
    return-void
.end method

.method public static synthetic lambda$DUW4Xu2XhHZlq8Vc-bJeCi0UgXs(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->jz()V

    return-void
.end method


# virtual methods
.method public jw()V
    .locals 1

    .line 173
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/-$$Lambda$XpuImagePresenter$DUW4Xu2XhHZlq8Vc-bJeCi0UgXs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/-$$Lambda$XpuImagePresenter$DUW4Xu2XhHZlq8Vc-bJeCi0UgXs;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public jx()V
    .locals 4

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xK:I

    .line 244
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xL:I

    .line 245
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xO:I

    .line 246
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xJ:Z

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xF:Lcom/xiaopeng/devtools/system/c/c;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xD:[B

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/system/c/c;->z([B)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->mHandler:Landroid/os/Handler;

    const v1, 0x186a1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 252
    return-void
.end method

.method public jy()V
    .locals 2

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xN:Z

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xF:Lcom/xiaopeng/devtools/system/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/system/c/c;->a(Lcom/xiaopeng/devtools/system/c/c$a;)V

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->mHandler:Landroid/os/Handler;

    const v1, 0x186a1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xF:Lcom/xiaopeng/devtools/system/c/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/system/c/c;->T(Z)V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->xE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 262
    return-void
.end method
