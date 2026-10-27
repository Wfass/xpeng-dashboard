.class public interface abstract Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;
.super Ljava/lang/Object;
.source "IComboQueryCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public checkEnterUserMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "modeType"    # Ljava/lang/String;

    .line 37
    const-string v0, "normal"

    return-object v0
.end method

.method public enterUserMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "modeType"    # Ljava/lang/String;

    .line 14
    const-string v0, "normal"

    return-object v0
.end method

.method public exitUserMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "modeType"    # Ljava/lang/String;

    .line 23
    const-string v0, "normal"

    return-object v0
.end method

.method public exitUserMode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "modeType"    # Ljava/lang/String;
    .param p2, "sound_location"    # I

    .line 27
    const-string v0, "normal"

    return-object v0
.end method

.method public getCurrentUserMode()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "normal"

    return-object v0
.end method

.method public getCurrentUserModeWithScreen(I)Ljava/lang/String;
    .locals 1
    .param p1, "display_location"    # I

    .line 49
    const-string v0, "normal"

    return-object v0
.end method

.method public guiPagecheckForbidden(ILjava/lang/String;)Z
    .locals 1
    .param p1, "display_location"    # I
    .param p2, "page_id"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    return v0
.end method
