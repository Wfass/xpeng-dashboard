.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
.super Ljava/lang/Object;
.source "ILocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;
    }
.end annotation


# virtual methods
.method public abstract accuracy()I
.end method

.method public abstract accuracy(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract adCode(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract adCode()Ljava/lang/String;
.end method

.method public abstract altitude()I
.end method

.method public abstract altitude(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract angle()F
.end method

.method public abstract angle(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract category()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;
.end method

.method public abstract category(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract city(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract city()Ljava/lang/String;
.end method

.method public extraParams(Ljava/util/HashMap;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;"
        }
    .end annotation

    return-object p0
.end method

.method public getExtraParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract latitude()F
.end method

.method public abstract latitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract longitude()F
.end method

.method public abstract longitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract rawLatitude()F
.end method

.method public abstract rawLatitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract rawLongitude()F
.end method

.method public abstract rawLongitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract satellites()I
.end method

.method public abstract satellites(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract sourceType()I
.end method

.method public abstract sourceType(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract speed()F
.end method

.method public abstract speed(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract time()J
.end method

.method public abstract time(J)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method
