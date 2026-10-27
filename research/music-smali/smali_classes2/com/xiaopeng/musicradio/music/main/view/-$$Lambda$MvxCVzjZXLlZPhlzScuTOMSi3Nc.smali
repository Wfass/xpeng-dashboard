.class public final synthetic Lcom/xiaopeng/musicradio/music/main/view/-$$Lambda$MvxCVzjZXLlZPhlzScuTOMSi3Nc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/-$$Lambda$MvxCVzjZXLlZPhlzScuTOMSi3Nc;->f$0:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/-$$Lambda$MvxCVzjZXLlZPhlzScuTOMSi3Nc;->f$0:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->initSearchTopBar()V

    return-void
.end method
