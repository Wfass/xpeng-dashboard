.class public Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;
.super Ljava/lang/Object;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FavoriteEvent"
.end annotation


# instance fields
.field public mFavorite:Z

.field public mId:Ljava/lang/String;

.field public mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2450
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2451
    iput-boolean p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;->mFavorite:Z

    .line 2452
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;->mId:Ljava/lang/String;

    .line 2453
    iput-object p4, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;->mPkgName:Ljava/lang/String;

    return-void
.end method
