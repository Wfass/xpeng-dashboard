.class Lbao$a;
.super Ljava/lang/Object;
.source "TempMusicInfoOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lbao;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getTempSheetMusicInfoDao()Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbao;-><init>(Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;)V

    sput-object v0, Lbao$a;->a:Lbao;

    return-void
.end method
