.class Lcom/xiaopeng/devtools/model/d/a$d;
.super Ljava/lang/Object;
.source "OledModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final tL:Lcom/xiaopeng/devtools/model/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 244
    new-instance v0, Lcom/xiaopeng/devtools/model/d/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/model/d/a;-><init>(Lcom/xiaopeng/devtools/model/d/a$1;)V

    sput-object v0, Lcom/xiaopeng/devtools/model/d/a$d;->tL:Lcom/xiaopeng/devtools/model/d/a;

    return-void
.end method

.method static synthetic ha()Lcom/xiaopeng/devtools/model/d/a;
    .locals 1

    .line 243
    sget-object v0, Lcom/xiaopeng/devtools/model/d/a$d;->tL:Lcom/xiaopeng/devtools/model/d/a;

    return-object v0
.end method
