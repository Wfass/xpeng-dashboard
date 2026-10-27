.class Lcom/xiaopeng/devtools/model/h/a$b;
.super Ljava/lang/Object;
.source "EcuVersionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final uO:Lcom/xiaopeng/devtools/model/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/xiaopeng/devtools/model/h/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/model/h/a;-><init>(Lcom/xiaopeng/devtools/model/h/a$1;)V

    sput-object v0, Lcom/xiaopeng/devtools/model/h/a$b;->uO:Lcom/xiaopeng/devtools/model/h/a;

    return-void
.end method

.method static synthetic hH()Lcom/xiaopeng/devtools/model/h/a;
    .locals 1

    .line 76
    sget-object v0, Lcom/xiaopeng/devtools/model/h/a$b;->uO:Lcom/xiaopeng/devtools/model/h/a;

    return-object v0
.end method
