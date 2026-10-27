.class Lcom/xiaopeng/lib/utils/j$a;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private WP:Ljava/lang/Integer;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/j$a;->mRunnable:Ljava/lang/Runnable;

    .line 391
    iput-object p2, p0, Lcom/xiaopeng/lib/utils/j$a;->WP:Ljava/lang/Integer;

    .line 392
    return-void
.end method


# virtual methods
.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$a;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$a;->WP:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
