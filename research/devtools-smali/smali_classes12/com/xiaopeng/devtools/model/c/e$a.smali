.class Lcom/xiaopeng/devtools/model/c/e$a;
.super Ljava/lang/Object;
.source "TestRebootModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final sn:Lcom/xiaopeng/devtools/model/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lcom/xiaopeng/devtools/model/c/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/model/c/e;-><init>(Lcom/xiaopeng/devtools/model/c/e$1;)V

    sput-object v0, Lcom/xiaopeng/devtools/model/c/e$a;->sn:Lcom/xiaopeng/devtools/model/c/e;

    return-void
.end method

.method static synthetic fK()Lcom/xiaopeng/devtools/model/c/e;
    .locals 1

    .line 68
    sget-object v0, Lcom/xiaopeng/devtools/model/c/e$a;->sn:Lcom/xiaopeng/devtools/model/c/e;

    return-object v0
.end method
