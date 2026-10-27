.class public Lcom/google/android/material/snackbar/Snackbar;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:[I

.field private static final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 69
    new-array v1, v0, [I

    sget v2, Laiv$b;->snackbarButtonStyle:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/snackbar/Snackbar;->d:[I

    const/4 v1, 0x2

    .line 70
    new-array v1, v1, [I

    sget v2, Laiv$b;->snackbarButtonStyle:I

    aput v2, v1, v3

    sget v2, Laiv$b;->snackbarTextViewStyle:I

    aput v2, v1, v0

    sput-object v1, Lcom/google/android/material/snackbar/Snackbar;->e:[I

    return-void
.end method
