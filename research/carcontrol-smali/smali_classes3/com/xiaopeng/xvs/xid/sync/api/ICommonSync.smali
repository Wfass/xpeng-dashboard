.class public interface abstract Lcom/xiaopeng/xvs/xid/sync/api/ICommonSync;
.super Ljava/lang/Object;
.source "ICommonSync.java"


# static fields
.field public static final BIND_HABIT:I = 0x1

.field public static final BIND_HABIT_USELESS:I = -0x1

.field public static final NOT_BIND_HABIT:I


# virtual methods
.method public abstract get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "isBindHabit"
        }
    .end annotation
.end method

.method public abstract getDefaultBindHabitType()I
.end method

.method public abstract getGeneral(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "isBindHabit"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "isBindHabit"
        }
    .end annotation
.end method

.method public abstract setGeneral(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method
