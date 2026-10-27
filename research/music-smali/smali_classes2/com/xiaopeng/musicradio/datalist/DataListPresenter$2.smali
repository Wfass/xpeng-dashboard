.class Lcom/xiaopeng/musicradio/datalist/DataListPresenter$2;
.super Ljava/lang/Object;
.source "DataListPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/datalist/g;

.field final synthetic b:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$2;->b:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$2;->a:Lcom/xiaopeng/musicradio/datalist/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$2;->b:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$2;->a:Lcom/xiaopeng/musicradio/datalist/g;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method
