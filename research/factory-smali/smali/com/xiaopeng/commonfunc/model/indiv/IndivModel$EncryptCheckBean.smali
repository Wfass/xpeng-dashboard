.class Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;
.super Ljava/lang/Object;
.source "IndivModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;
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

.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;->this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;
    .param p2, "x1"    # Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$1;

    .line 196
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;-><init>(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)V

    return-void
.end method
