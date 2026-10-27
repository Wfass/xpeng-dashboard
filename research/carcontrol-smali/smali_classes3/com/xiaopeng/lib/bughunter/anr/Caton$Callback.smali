.class public interface abstract Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;
.super Ljava/lang/Object;
.source "Caton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/anr/Caton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public varargs abstract onBlockOccurs([Ljava/lang/String;Z[J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stackTraces",
            "isAnr",
            "blockArgs"
        }
    .end annotation
.end method
