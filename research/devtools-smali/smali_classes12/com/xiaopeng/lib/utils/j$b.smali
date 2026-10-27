.class Lcom/xiaopeng/lib/utils/j$b;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private WQ:Z

.field private WR:Ljava/util/concurrent/ThreadFactory;

.field private WT:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    const-string v0, "newFixedThreadPool"

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/j$b;->mName:Ljava/lang/String;

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/utils/j$b;->WQ:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/utils/j$1;)V
    .locals 0

    .line 519
    invoke-direct {p0}, Lcom/xiaopeng/lib/utils/j$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/lib/utils/j$b;)Ljava/util/concurrent/ThreadFactory;
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/xiaopeng/lib/utils/j$b;->WR:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/lib/utils/j$b;)Ljava/lang/String;
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/xiaopeng/lib/utils/j$b;->WT:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/lib/utils/j$b;)Z
    .locals 0

    .line 519
    iget-boolean p0, p0, Lcom/xiaopeng/lib/utils/j$b;->WQ:Z

    return p0
.end method


# virtual methods
.method aQ(Z)Lcom/xiaopeng/lib/utils/j$b;
    .locals 0

    .line 555
    iput-boolean p1, p0, Lcom/xiaopeng/lib/utils/j$b;->WQ:Z

    .line 556
    return-object p0
.end method

.method dL(Ljava/lang/String;)Lcom/xiaopeng/lib/utils/j$b;
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/j$b;->WT:Ljava/lang/String;

    .line 542
    return-object p0
.end method

.method oX()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 561
    new-instance v0, Lcom/xiaopeng/lib/utils/j$b$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/utils/j$b$1;-><init>(Lcom/xiaopeng/lib/utils/j$b;)V

    return-object v0
.end method
