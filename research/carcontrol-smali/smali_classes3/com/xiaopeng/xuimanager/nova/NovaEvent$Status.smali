.class public interface abstract Lcom/xiaopeng/xuimanager/nova/NovaEvent$Status;
.super Ljava/lang/Object;
.source "NovaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/nova/NovaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Status"
.end annotation


# static fields
.field public static final FAIL:I = 0x2

.field public static final START:I = 0x0

.field public static final SUCCESS:I = 0x1


# direct methods
.method public static toString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "(unknown)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "FAIL"

    return-object p0

    :cond_1
    const-string p0, "SUCCESS"

    return-object p0

    :cond_2
    const-string p0, "START"

    return-object p0
.end method
