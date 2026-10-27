.class Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$4;
.super Ljava/lang/Object;
.source "RVBaseAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->onItemRangeRemoved(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;II)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$4;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$4;->a:I

    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$4;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$4;->a:I

    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$4;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b(II)V

    return-void
.end method
