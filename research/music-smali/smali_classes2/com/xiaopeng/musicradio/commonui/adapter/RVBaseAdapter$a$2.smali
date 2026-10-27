.class Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$2;
.super Ljava/lang/Object;
.source "RVBaseAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->onItemRangeChanged(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;IILjava/lang/Object;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$2;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$2;->a:I

    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$2;->b:I

    iput-object p4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$2;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$2;->a:I

    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$2;->b:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$2;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;IILjava/lang/Object;)V

    return-void
.end method
