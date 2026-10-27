.class Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$3;
.super Ljava/lang/Object;
.source "NrCategoryOrAreaDetailPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$3;->c:Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$3;->c:Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->c:Z

    .line 163
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$3;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->b(Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V

    return-void
.end method
