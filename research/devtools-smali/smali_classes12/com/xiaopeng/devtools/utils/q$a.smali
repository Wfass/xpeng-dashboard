.class Lcom/xiaopeng/devtools/utils/q$a;
.super Ljava/lang/Object;
.source "SharedUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/utils/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final BV:Lcom/xiaopeng/devtools/utils/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/xiaopeng/devtools/utils/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/utils/q;-><init>(Lcom/xiaopeng/devtools/utils/q$1;)V

    sput-object v0, Lcom/xiaopeng/devtools/utils/q$a;->BV:Lcom/xiaopeng/devtools/utils/q;

    return-void
.end method

.method static synthetic lg()Lcom/xiaopeng/devtools/utils/q;
    .locals 1

    .line 25
    sget-object v0, Lcom/xiaopeng/devtools/utils/q$a;->BV:Lcom/xiaopeng/devtools/utils/q;

    return-object v0
.end method
