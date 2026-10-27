.class final Lcom/xiaopeng/devtools/utils/a/c$a;
.super Ljava/lang/Object;
.source "XmartV1IndivHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/utils/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final BY:Lcom/xiaopeng/devtools/utils/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Lcom/xiaopeng/devtools/utils/a/c;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/utils/a/c;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/utils/a/c$a;->BY:Lcom/xiaopeng/devtools/utils/a/c;

    return-void
.end method

.method static synthetic lG()Lcom/xiaopeng/devtools/utils/a/c;
    .locals 1

    .line 136
    sget-object v0, Lcom/xiaopeng/devtools/utils/a/c$a;->BY:Lcom/xiaopeng/devtools/utils/a/c;

    return-object v0
.end method
