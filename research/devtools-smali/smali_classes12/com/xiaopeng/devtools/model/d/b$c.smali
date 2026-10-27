.class Lcom/xiaopeng/devtools/model/d/b$c;
.super Ljava/lang/Object;
.source "OledMusicBookModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final tP:Lcom/xiaopeng/devtools/model/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/xiaopeng/devtools/model/d/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/model/d/b;-><init>(Lcom/xiaopeng/devtools/model/d/b$1;)V

    sput-object v0, Lcom/xiaopeng/devtools/model/d/b$c;->tP:Lcom/xiaopeng/devtools/model/d/b;

    return-void
.end method

.method static synthetic hc()Lcom/xiaopeng/devtools/model/d/b;
    .locals 1

    .line 76
    sget-object v0, Lcom/xiaopeng/devtools/model/d/b$c;->tP:Lcom/xiaopeng/devtools/model/d/b;

    return-object v0
.end method
