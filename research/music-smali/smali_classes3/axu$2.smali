.class final Laxu$2;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Lbff;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 0

    .line 133
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
