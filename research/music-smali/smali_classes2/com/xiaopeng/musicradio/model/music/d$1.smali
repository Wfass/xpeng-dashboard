.class Lcom/xiaopeng/musicradio/model/music/d$1;
.super Laxz;
.source "DefaultMusicPlayAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/music/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/d;Ljava/lang/String;I)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/d$1;->a:Lcom/xiaopeng/musicradio/model/music/d;

    invoke-direct {p0, p2, p3}, Laxz;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3}, Laxz;->a(ZILjava/lang/String;)V

    .line 27
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
