.class public interface abstract Lcom/xiaopeng/xuimanager/common/ICommonPipe;
.super Ljava/lang/Object;
.source "ICommonPipe.java"


# virtual methods
.method public abstract getInt(Ljava/lang/String;)I
.end method

.method public abstract getLong(Ljava/lang/String;)J
.end method

.method public abstract getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getParcelableList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract register(Ljava/lang/String;Lcom/xiaopeng/xuimanager/common/PipeListener;)V
.end method

.method public abstract setInt(Ljava/lang/String;I)V
.end method

.method public abstract setLong(Ljava/lang/String;J)V
.end method

.method public abstract setParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract setParcelableList(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setString(Ljava/lang/String;Ljava/lang/String;)V
.end method
