.class final Lbrave/propagation/ExtraFieldPropagation$Extra;
.super Lbrave/internal/PredefinedPropagationFields;
.source "ExtraFieldPropagation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/ExtraFieldPropagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Extra"
.end annotation


# direct methods
.method varargs constructor <init>(Lbrave/propagation/ExtraFieldPropagation$Extra;[Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lbrave/propagation/ExtraFieldPropagation$Extra;
    .param p2, "fieldNames"    # [Ljava/lang/String;

    .line 427
    invoke-direct {p0, p1, p2}, Lbrave/internal/PredefinedPropagationFields;-><init>(Lbrave/internal/PredefinedPropagationFields;[Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldNames"    # [Ljava/lang/String;

    .line 423
    invoke-direct {p0, p1}, Lbrave/internal/PredefinedPropagationFields;-><init>([Ljava/lang/String;)V

    .line 424
    return-void
.end method
