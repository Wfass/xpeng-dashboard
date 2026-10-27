.class Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$5;
.super Ljava/lang/Object;
.source "RVBaseAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->onItemRangeMoved(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;III)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$5;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$5;->a:I

    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$5;->b:I

    iput p4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$5;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$5;->a:I

    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$5;->b:I

    iget v3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$5;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a(III)V

    return-void
.end method
