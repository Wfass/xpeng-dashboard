.class public interface abstract Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;
.super Ljava/lang/Object;
.source "SharedDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISharedDisplayEventListener"
.end annotation


# virtual methods
.method public onActivityChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "screenId"    # I
    .param p2, "property"    # Ljava/lang/String;

    .line 157
    return-void
.end method

.method public onChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sharedId"    # I

    .line 148
    return-void
.end method

.method public onPositionChanged(Ljava/lang/String;III)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "fromSharedId"    # I
    .param p4, "toSharedId"    # I

    .line 153
    return-void
.end method
