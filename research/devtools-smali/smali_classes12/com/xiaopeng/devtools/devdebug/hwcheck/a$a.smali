.class Lcom/xiaopeng/devtools/devdebug/hwcheck/a$a;
.super Ljava/lang/Object;
.source "HwCheckModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/devdebug/hwcheck/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final rm:Lcom/xiaopeng/devtools/devdebug/hwcheck/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 256
    new-instance v0, Lcom/xiaopeng/devtools/devdebug/hwcheck/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$a;->rm:Lcom/xiaopeng/devtools/devdebug/hwcheck/a;

    return-void
.end method

.method static synthetic fj()Lcom/xiaopeng/devtools/devdebug/hwcheck/a;
    .locals 1

    .line 255
    sget-object v0, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$a;->rm:Lcom/xiaopeng/devtools/devdebug/hwcheck/a;

    return-object v0
.end method
