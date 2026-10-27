.class Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;
.super Ljava/lang/Object;
.source "IndivPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptCheckBean"
.end annotation


# instance fields
.field public rawData:Ljava/lang/String;

.field public teeDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;->this$0:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;
    .param p2, "x1"    # Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;

    .line 197
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;-><init>(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)V

    return-void
.end method
