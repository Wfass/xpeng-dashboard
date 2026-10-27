.class public Lcom/xiaopeng/carcontrol/direct/message/DirectHvacEventMsg;
.super Ljava/lang/Object;
.source "DirectHvacEventMsg.java"


# instance fields
.field private mUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Landroid/net/Uri;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/direct/message/DirectHvacEventMsg;->mUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public setUrl(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/message/DirectHvacEventMsg;->mUrl:Landroid/net/Uri;

    return-void
.end method
