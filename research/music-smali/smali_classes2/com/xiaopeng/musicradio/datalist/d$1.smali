.class Lcom/xiaopeng/musicradio/datalist/d$1;
.super Ljava/lang/Object;
.source "DataListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/datalist/d;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/datalist/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/datalist/d;I)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/d$1;->b:Lcom/xiaopeng/musicradio/datalist/d;

    iput p2, p0, Lcom/xiaopeng/musicradio/datalist/d$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d$1;->b:Lcom/xiaopeng/musicradio/datalist/d;

    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/d$1;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->notifyItemChanged(I)V

    return-void
.end method
