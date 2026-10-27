.class public interface abstract Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;
.super Ljava/lang/Object;
.source "StoreProviderManagerWarpper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppGroupCallback"
.end annotation


# virtual methods
.method public abstract onCallback(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
            ">;>;)V"
        }
    .end annotation
.end method
