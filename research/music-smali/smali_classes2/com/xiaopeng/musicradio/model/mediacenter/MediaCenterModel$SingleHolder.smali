.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$SingleHolder;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$SingleHolder;->INSTANCE:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
