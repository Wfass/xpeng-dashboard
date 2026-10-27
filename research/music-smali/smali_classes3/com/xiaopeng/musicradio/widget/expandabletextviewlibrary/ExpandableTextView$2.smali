.class Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$2;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$2;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 360
    invoke-static {}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a()I

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$2;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->c(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setContent(Ljava/lang/String;)V

    return-void
.end method
