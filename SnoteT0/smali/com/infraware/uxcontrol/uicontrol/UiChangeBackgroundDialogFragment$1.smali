.class Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment$1;
.super Ljava/lang/Object;
.source "UiChangeBackgroundDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;

    #getter for: Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;->mOnBackgroundChangeListener:Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment$OnBackgroundChangeListener;
    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;->access$6(Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;)Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment$OnBackgroundChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;

    #getter for: Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;->m_nSelectBgIndex:I
    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;->access$7(Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;

    #getter for: Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;->m_IsCheckedExtent:Z
    invoke-static {v2}, Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;->access$8(Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiChangeBackgroundDialogFragment$OnBackgroundChangeListener;->OnBackgroundChanged(IZZ)V

    .line 220
    return-void
.end method