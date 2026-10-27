.class public final synthetic Lcom/xiaopeng/musicradio/home/view/-$$Lambda$HomeFragment$wNu5hjp55iPkZudgu7SXaU8DM6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/musicradio/home/view/HomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/-$$Lambda$HomeFragment$wNu5hjp55iPkZudgu7SXaU8DM6I;->f$0:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/-$$Lambda$HomeFragment$wNu5hjp55iPkZudgu7SXaU8DM6I;->f$0:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->lambda$initIdleTimeTask$0$HomeFragment()V

    return-void
.end method
