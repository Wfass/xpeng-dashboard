.class public interface abstract Lcom/xiaopeng/carcontrol/view/speech/IFictitiousElementConstructor;
.super Ljava/lang/Object;
.source "IFictitiousElementConstructor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public varargs abstract generateElement(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "currState",
            "vuiLable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;"
        }
    .end annotation
.end method

.method public varargs abstract generateElement(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "currState",
            "values",
            "vuiLable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;"
        }
    .end annotation
.end method
